# 👋 Hi, I'm Huỳnh Nhân Quốc  

💻 Indie-stack Developer | ⚡ Founder of [kitmodule.com](https://kitmodule.com)  

This is my profile, which can be both **viewed on GitHub** and **run using Golang**.  

👉 Run it online directly at [Golang Online](https://www.programiz.com/golang/online-compiler) or [Go Playground](https://go.dev/play/) (copy the code below).  

---
## 🧑‍💻 Profile coded in Go  

```go
package main

import (
	"fmt"
	"reflect"
	"strings"
	"time"
)

type Information struct {
	Name string
	Profession string
	Work       string
	Enthusiast []string
	Email      string
	Location   []string
	BirthDate  time.Time
}

// Hàm tính tuổi động từ BirthDate
func (i Information) Age() int {
	if i.BirthDate.IsZero() {
		return 0
	}
	now := time.Now()
	years := now.Year() - i.BirthDate.Year()
	if now.YearDay() < i.BirthDate.YearDay() {
		years--
	}
	return years
}

type About struct {
	Summary string
}

type Techstack struct {
	Languages []string
	Frontend  []string
	Backend   []string
	Database  []string
	Devops    []string
}

type Connect struct {
	Blog      string
	X_Twitter string
	Linkedin  string
	Threads   string
	Facebook  string
	GitHub    string
	Youtube   string
}

// ========== Profile ==========
type Profile struct {
	Information
	About
	Techstack
	Connect
}

// ========== Methods ==========
func (p Profile) Infomation() Profile {
	p.Name = "HUỲNH NHÂN QUỐC"
	p.BirthDate = time.Date(1995, time.February, 24, 0, 0, 0, 0, time.UTC) // 🎂 ngày sinh
	p.Profession = "Indie-stack Developer"
	p.Work = "Founder of kitmodule.com"
	p.Email = "mail@huynhnhanquoc.com"
	p.Enthusiast = []string{"Golang", "Vanilla JS"}
	p.Location = []string{"Tam Kỳ", "Đà Nẵng", "Việt Nam"}
	return p
}

func (p Profile) AboutMe() Profile {
	p.Summary = `I’m an indie-stack developer from Vietnam, passionate about crafting simple, practical, and meaningful products. I follow the indie spirit: guiding a project from problem → need → experiment → operation → testing → packaging → open → iterative development. I share these journeys on kitmodule.com , a space where I explore ideas, build tools, and deliver products that celebrate minimalism, elegance, and tangible impact.`
	return p
}

func (p Profile) TechstackMe() Profile {
	p.Techstack = Techstack{
		Languages: []string{"Golang", "JavaScript", "HTML5", "CSS3"},
    		Frontend:  []string{
        "Self-written & customized Golang template",
        "Self-written & customized JavaScript framework",
        "Self-written & customized CSS attribute",
    },
		Backend:   []string{"Golang", "Fiber"},
		Database:  []string{"PostgreSQL", "Citus", "Timescale"},
		Devops:    []string{"Ubuntu", "Self-host"},
	}
	return p
}

func (p Profile) ConnectMe() Profile {
	p.Connect = Connect{
		Blog:      "https://huynhnhanquoc.com",
		X_Twitter: "https://twitter.com/huynhnhanquoc",
		Linkedin:  "https://www.linkedin.com/in/huynhnhanquoc",
		Threads:   "https://www.threads.net/@huynhnhanquoc",
		Facebook:  "https://facebook.com/huynhnhanquoc",
		GitHub:    "https://github.com/huynhnhanquoc",
		Youtube:   "https://youtube.com/@huynhnhanquoc",
	}
	return p
}

// ========== Logger ==========
func (p Profile) Log(pretty bool) {
	t := reflect.TypeOf(p)
	v := reflect.ValueOf(p)

	for i := 0; i < t.NumField(); i++ {
		field := t.Field(i)
		value := v.Field(i)

		if field.Type.Kind() == reflect.Struct {
			fmt.Printf("\n\n📂 %s:\n", field.Name)
			for j := 0; j < field.Type.NumField(); j++ {
				f := field.Type.Field(j)
				val := value.Field(j).Interface()

				if slice, ok := val.([]string); ok {
					// Xử lý slice
					fmt.Printf("  - %s: %s\n", f.Name, strings.Join(slice, ", "))
				} else if f.Name == "BirthDate" {
					// 🎂 In BirthDate + Age
					date := val.(time.Time)
					fmt.Printf("  - %s: %s ( Age: %d )\n",
						f.Name,
						date.Format("02-01-2006"),
						p.Information.Age())
				} else {
					// In bình thường
					fmt.Printf("  - %s: %v\n", f.Name, val)
				}
			}
		}
	}
}



// ========== Main ==========
func main() {
	Profile{}.
		Infomation().
		AboutMe().
		TechstackMe().
		ConnectMe().
		Log(true)
}
```
✨ *I’m a dreamer who values not just running code, but the control and creativity behind it.*  
💻 Code Artist – Huỳnh Nhân Quốc
